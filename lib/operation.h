#ifndef OPERATION_H
#define OPERATION_H

#include <cmath>
#include <stdexcept>
#include <vector>

// Computes x^n
long long power(int x, int n) {
  long long result = 1;
  for (int i = 0; i < n; ++i) {
    result *= x;
  }
  return result;
}

// Compute x^n using squaring method
long long powerSquaring(int x, int n) {
  if (n == 0)
    return 1;
  long long halfPower = powerSquaring(x, n / 2);
  if (n % 2 == 0) {
    return halfPower * halfPower;
  } else {
    return x * halfPower * halfPower;
  }
}

// Compute x^n using squaring method with bit shifting
long long powerSquaringBitShift(int x, int n) {
  long long result = 1;
  long long x_pow = x;
  while (n > 0) {
    if (n & 1) { // If n is odd
      result *= x_pow;
    }
    x_pow *= x_pow; // Square the base
    n >>= 1;        // Equivalent to dividing n by 2
  }
  return result;
}
// Define the PolyNode for linked list representation of polynomials
struct PolyNode {
  int coef;       // Coefficient of the term
  int expo;       // Exponent of the term
  PolyNode *next; // Pointer to the next node

  PolyNode(int c, int e, PolyNode *n = nullptr) : coef(c), expo(e), next(n) {}
};

// Function to add nodes to the polynomial linked list
PolyNode *addPolyNode(PolyNode *head, int coef, int expo) {
  PolyNode *newNode = new PolyNode(coef, expo);
  newNode->next = head;
  return newNode;
}

int countNodes(PolyNode *head) {
  int count = 0;
  PolyNode *current = head;
  while (current != nullptr) {
    count++;
    current = current->next;
  }
  return count;
}

// Clean up function to delete the linked list
void deletePolynomial(PolyNode *head) {
  while (head != nullptr) {
    PolyNode *temp = head;
    head = head->next;
    delete temp;
  }
}

// Evaluates the polynomial a0 + a1*x + ... + ak-1*x^(k-1) for x from 1 to n
// using a naive approach
std::vector<long long> evaluatePolynomial(const std::vector<int> &coeffs, int k,
                                          int n) {
  if (coeffs.size() != k) {
    throw std::invalid_argument(
        "The number of coefficients does not match the expected size k.");
  }
  std::vector<long long> results(n);
  for (int x = 1; x <= n; ++x) {
    long long value = 0;
    for (int i = 0; i < k; ++i) {
      value += coeffs[i] * std::pow(x, i);
    }
    results[x - 1] = value;
  }
  return results;
}

// Evaluates the polynomial using linked list
std::vector<long long> evaluatePolynomialLinkedList(PolyNode *head, int k,
                                                    int n) {
  int nodeCount = countNodes(head);
  if (nodeCount != k) {
    throw std::invalid_argument(
        "Error: The number of nodes in the linked list does not match k.");
  }
  std::vector<long long> results(n, 0);
  for (int x = 1; x <= n; ++x) {
    long long value = 0;
    PolyNode *current = head;
    while (current != nullptr) {
      value += current->coef * std::pow(x, current->expo);
      current = current->next;
    }
    results[x - 1] = value;
  }
  return results;
}

// Evaluates the polynomial using Horner's method
std::vector<long long> evaluatePolynomialHorner(const std::vector<int> &coeffs,
                                                int k, int n) {
  if (coeffs.size() != k) {
    throw std::invalid_argument(
        "Error: The number of coefficients does not match k.");
  }
  std::vector<long long> results(n);
  for (int x = 1; x <= n; ++x) {
    long long result = 0;
    for (int i = k - 1; i >= 0; --i) {
      result = result * x + coeffs[i];
    }
    results[x - 1] = result;
  }
  return results;
}

#endif // OPERATION_H

